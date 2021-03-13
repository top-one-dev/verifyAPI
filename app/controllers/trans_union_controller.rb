require 'httparty'

class TransUnionController < ApiController
  def consumer
    xml_param     = json2xml request.body.read
    response      = HTTParty.post(
                      ENV['CONSUMER_API'],
                      :headers => {"Content-Type" => "text/xml; charset=utf-8"},
                      :body => xml_param )
    if response.body
      failure = Hash.from_xml(response.body)['Envelope']['Body']['Fault']
      failure = Hash.from_xml(response.body)['Envelope']['Body']['ProcessRequestTrans01Response']['ProcessRequestTrans01Result']['ErrorMessage'] if failure.nil?
      unless failure
        consumer_data = Hash.from_xml(response.body)['Envelope']['Body']['ProcessRequestTrans01Response']['ProcessRequestTrans01Result']
        consumer_no           = consumer_data['AddressNA08']['AddressNA08'].first['ConsumerNo']
        addresses             = consumer_data['AddressNA08']['AddressNA08']
        aka_names             = consumer_data['AKANamesNK04']['AKANamesNK04']
        cons_enq_trans_infos  = consumer_data['ConsEnqTransInfo0102']
        consumer_infos        = consumer_data['ConsumerInfoNO05']
        echo_data             = consumer_data['EchoData0001']
        employment_nms        = consumer_data['EmploymentNM04']['EmploymentNM04']
        evolution_ccs         = consumer_data['EvolutionCC01']['EvolutionCC01']
        evolution_ens         = consumer_data['EvolutionEN01']['EvolutionEN01']
        hawk_nhs              = consumer_data['HawkNH05']
        phone_numbers         = consumer_data['ConsumerTelephoneHistoryNW01']
        v1_segs               = consumer_data['V1Segment']['v1Segs']['v1Seg']
        result = true
        result = save_consumer_data consumer_no, addresses, aka_names, cons_enq_trans_infos, consumer_infos, echo_data, employment_nms, evolution_ccs, evolution_ens, hawk_nhs, phone_numbers, v1_segs unless Consumer.exists?( ConsumerNo: consumer_no )
        
        render json: { success: result }
      else
         render json: { error: failure }
      end
    else
      render json: { error:  "Some error with 3rd party API." }
    end
  end

  def commerce
    xml_param     = json2xml request.body.read
    response      = HTTParty.post(
                      ENV['COMMERCE_API'],
                      :headers => {"Content-Type" => "text/xml; charset=utf-8"},
                      :body => xml_param )
    
    if response.body
      failure = Hash.from_xml(response.body)['Envelope']['Body']['Fault']
      failure = Hash.from_xml(response.body)['Envelope']['Body']['BusinessSearchResponse']['BusinessSearchResult']['ErrorMessage'] if failure.nil?
      unless failure
        company_data = Hash.from_xml(response.body)['Envelope']['Body']['BusinessSearchResponse']['BusinessSearchResult']
        company_data = company_data['ModuleAvailabilityResponse']['Modules']['Module'].merge company_data['SearchResponse']['SearchResponse']
        if Company.exists?( ITNumber: company_data['ITNumber'] )
          render json: { success: "true" }
        else
          company      = Company.new(company_data)
          if company.save 
            render json: { success: "true" }
          else
            render json: { error: company.errors }
          end
        end
      else
        render json: { error: failure }
      end
    else
      render json: { error:  "Some error with 3rd party API." }
    end
  end

  private 
  def save_consumer_data consumer_no, addresses, aka_names, cons_enq_trans_infos, consumer_infos, echo_data, employment_nms, evolution_ccs, evolution_ens, hawk_nhs, phone_numbers, v1_segs
    consumer = current_user.consumers.create( ConsumerNo: consumer_no )
    result = true
    addresses.each{ |address| result = false unless consumer.addresses.create(address) }
    aka_names.each{ |aka_name| result = false unless consumer.aka_names.create(aka_name) }
    evolution_ens.each{ |evolution_en| result = false unless consumer.evolution_ens.create(evolution_en) }
    phone_numbers['WorkNumbers']['PhoneNumber'].each{ |phone_number| result = false unless consumer.phone_numbers.create(phone_number.merge!("phone_type" => 1)) }
    phone_numbers['HomeNumbers']['PhoneNumber'].each{ |phone_number| result = false unless consumer.phone_numbers.create(phone_number.merge!("phone_type" => 2)) }
    phone_numbers['CellNumbers']['PhoneNumber'].each{ |phone_number| result = false unless consumer.phone_numbers.create(phone_number.merge!("phone_type" => 3)) }
    result = false unless consumer.cons_enq_trans_infos.create(cons_enq_trans_infos)
    result = false unless consumer.consumer_infos.create(consumer_infos)
    result = false unless consumer.echo_data.create(echo_data)
    result = false unless consumer.evolution_ccs.create(evolution_ccs)
    result = false unless consumer.hawk_nhs.create(hawk_nhs)
    consumer.destroy unless result
    result 
  end

  def json2xml str
    doc = Nokogiri::XML(JSON.parse(str).to_xml(root: 'Envelope'))
    doc.at_css("Envelope")['xmlns:soapenv'] = "http://schemas.xmlsoap.org/soap/envelope/"
    doc.at_css("Envelope")['xmlns:tub'] = "https://secure.transunion.co.za/TUBureau"
    doc = doc.to_s.gsub('<?xml version="1.0" encoding="UTF-8"?>', "")
    doc = doc.gsub("<", "<tub:").gsub("<tub:/", "</tub:")
    doc = doc.gsub('tub:Envelop', "soapenv:Envelop")
    doc = doc.gsub('tub:Header', "soapenv:Header")
    doc = doc.gsub('tub:Body', "soapenv:Body")
    doc.strip!
  end

end
