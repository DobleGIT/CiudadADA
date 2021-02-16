with Text_IO;
with SensorLectorP; use SensorLectorP;
with ActuadorEscritorP; use ActuadorEscritorP;
with MonitorPlanta; use MonitorPlanta;
package body tareaPlanta is
   task body Planta is



      monitorProduccionP:aliased MonitorProduccionPlanta;

      sensorL:  aliased SensorLector(monitorProduccionP'Access);
      actuadorE: aliased ActuadorEscritor(monitorProduccionP'Access);



      produccionLocal:Integer;


   begin
      monitorProduccionP.iniciar(15);


      loop

         select
            accept consultar(dato:out Integer)  do


               sensorL.leer(produccionLocal);

               dato:=produccionLocal;

            end consultar;
         or

            accept incrementar do

               actuadorE.incrementar;

            end incrementar;
         or
            accept decrementar do

               actuadorE.decrementar;

            end decrementar;
         or

            delay 5.0;
            Text_IO.Put_Line("ALERTA MONITORIZACION ENERGIA "&Integer'Image(paramID));
         or
            accept mantener  do
               actuadorE.mantener;
            end mantener;

         end select;


      end loop;


   end Planta;
end tareaPlanta;
