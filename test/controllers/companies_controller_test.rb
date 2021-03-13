require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url, as: :json
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { BusinessName: @company.BusinessName, Country: @company.Country, FaxNo: @company.FaxNo, Hours: @company.Hours, ITNumber: @company.ITNumber, Name: @company.Name, NameType: @company.NameType, PhoneNo: @company.PhoneNo, PhysicalAddress: @company.PhysicalAddress, PostCode: @company.PostCode, PostalAddress: @company.PostalAddress, PostalCountry: @company.PostalCountry, PostalPostCode: @company.PostalPostCode, PostalSuburb: @company.PostalSuburb, PostalTown: @company.PostalTown, ProductCode: @company.ProductCode, ProductDesc: @company.ProductDesc, ProductType: @company.ProductType, RegNo: @company.RegNo, RegStatus: @company.RegStatus, RegStatusCode: @company.RegStatusCode, Suburb: @company.Suburb, Town: @company.Town, TradingNumber: @company.TradingNumber, consumer_id: @company.consumer_id } }, as: :json
    end

    assert_response 201
  end

  test "should show company" do
    get company_url(@company), as: :json
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { BusinessName: @company.BusinessName, Country: @company.Country, FaxNo: @company.FaxNo, Hours: @company.Hours, ITNumber: @company.ITNumber, Name: @company.Name, NameType: @company.NameType, PhoneNo: @company.PhoneNo, PhysicalAddress: @company.PhysicalAddress, PostCode: @company.PostCode, PostalAddress: @company.PostalAddress, PostalCountry: @company.PostalCountry, PostalPostCode: @company.PostalPostCode, PostalSuburb: @company.PostalSuburb, PostalTown: @company.PostalTown, ProductCode: @company.ProductCode, ProductDesc: @company.ProductDesc, ProductType: @company.ProductType, RegNo: @company.RegNo, RegStatus: @company.RegStatus, RegStatusCode: @company.RegStatusCode, Suburb: @company.Suburb, Town: @company.Town, TradingNumber: @company.TradingNumber, consumer_id: @company.consumer_id } }, as: :json
    assert_response 200
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company), as: :json
    end

    assert_response 204
  end
end
