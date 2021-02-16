package MonitorPlanta is
   protected type MonitorProduccionPlanta is
      function consultarProduccion return Integer;
      procedure iniciar(valorInicial:Integer);
      procedure incrementar;
      procedure decrementar;
private
      produccionPlanta:Integer;
   end MonitorProduccionPlanta;
end MonitorPlanta;
