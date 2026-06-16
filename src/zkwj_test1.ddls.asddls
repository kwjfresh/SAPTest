@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection View - CDS Data Model'

define view entity ZKWJ_TEST1
  as select from /dmo/connection as Connection

{
     
  key   Connection.carrier_id      as AirlineID,
  key   Connection.connection_id   as ConnectionID,

        Connection.airport_from_id as DepartureAirport,

        Connection.airport_to_id   as DestinationAirport,

        Connection.departure_time  as DepartureTime,
        Connection.arrival_time    as ArrivalTime,

        Connection.distance        as Distance,
        Connection.distance_unit   as DistanceUnit
}
