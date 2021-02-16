package MonitorCiudad is
   protected type ConsumoCiudad is
   procedure iniciar(consumoInicial:Integer);
      procedure asignar(variacion:Integer);
      function consultarConsumo return Integer;
private
   consumo:Integer;
   end ConsumoCiudad;
end MonitorCiudad;
