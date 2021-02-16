package body MonitorPlanta is
   protected body MonitorProduccionPlanta is

      function consultarProduccion return Integer is
      begin

            return produccionPlanta;

      end consultarProduccion;

      procedure incrementar is
      begin

            produccionPlanta:=produccionPlanta+1;

      end incrementar;

      procedure decrementar is
      begin
            produccionPlanta :=produccionPlanta-1;

      end decrementar;


      procedure iniciar(valorInicial:Integer)is
      begin
         produccionPlanta:=valorInicial;
      end iniciar;

   end MonitorProduccionPlanta;
end MonitorPlanta;
