
--A. Obtener el número de personas que han consultado itinerarios con un valor mayor a mil dólares.
select count(*) from reservation where amount > 10000
--B. Identificar a las personas mayores de 40 años que viven en la ciudad de Bogotá y han realizado reservas.
select distinct Client.Identification, FirstName, LastName, City, Age from Reservation
left join Client on client.Identification = reservation.IdentificationClient 
where Client.Age > 40
--C. Listar las reservas que se realizaron con pago mediante tarjeta de crédito.
select * from Reservation where Payment = 'Tarjeta de credito'
--D. Listar las reservas que se hicieron con pago en destino.
select * from Reservation where Payment = 'Pago en destino'
--E. Mostrar las reservas activas y canceladas.
select IdReservation from Reservation where StateReservation in ('Cancelada','Activa')
