package body MonitorCiudad is
   protected body ConsumoCiudad is
      procedure iniciar(consumoInicial:Integer) is
      begin
         consumo:=consumoInicial;
      end iniciar;

      procedure asignar(variacion:Integer) is
      begin
         consumo:=consumo+variacion;

      end asignar;

      function consultarConsumo return Integer is
      begin
         return consumo;
      end consultarConsumo;



   end ConsumoCiudad;
end MonitorCiudad;
