@EndUserText.label: 'Consumption - Booking'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity z_c_booking_alfa03 as projection on z_i_booking_alfa03
{

key travel_id as TravelID,
key booking_id as BookingID,
booking_date as BookingDate,
customer_id as CustomerID,
@ObjectModel.text.element: ['CarrierName']
carrier_id as CarrierID,
_Carrier.Name as CarrierName,
connection_id as ConnectionID,
flight_date as FlightDate,
@Semantics.amount.currencyCode :
'CurrencyCode'
flight_price as FlightPrice,
@Semantics.currencyCode: true
currency_code as CurrencyCode,
booking_status as BookingStatus,
last_change_at as LastChangedAt,
/* Associations */
_Travel : redirected to parent z_c_travel_alfa03,
_BookingSupplement : redirected to composition child z_c_booksupp_alfa03,
_Carrier,
_Connection,
_Customer
    
}
