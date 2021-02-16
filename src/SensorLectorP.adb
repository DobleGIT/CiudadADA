package body SensorLectorP is
   protected body SensorLector is

      procedure leer (dato:out Integer) is
      begin
         delay 0.15;
         dato:=monitorP.consultarProduccion;


      end leer;

   end SensorLector;
end SensorLectorP;
