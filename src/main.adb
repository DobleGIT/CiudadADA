with Text_IO;
with Ada.Real_Time;
use Ada.Real_Time;
with Ciudad;
use Ciudad;
with MonitorCiudad; use MonitorCiudad;
with tareaPlanta; use tareaPlanta;
with MonitorPlanta; use MonitorPlanta;
procedure Main is

   consumo:aliased ConsumoCiudad;
   consumoTotalCiudad:Integer;
   sumaProduccionPlantas:Integer;
   porcentajeConsumo:Integer;
   diferencia:Integer;

   produccionPlanta1:Integer;
   produccionPlanta2:Integer;
   produccionPlanta3:Integer;


   procedure comenzarPrograma is

      tareaCiu:TareaCiudad(consumo'Access,1);
      planta1:Planta(1);
      planta2:Planta(2);
      planta3:Planta(3);


   begin


      loop
         delay 1.0;

         Text_IO.Put_Line("-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-");

         consumoTotalCiudad:=consumo.consultarConsumo;

         porcentajeConsumo:=((5)*consumoTotalCiudad)/100; --5% del consumo de la cuidad

         planta1.consultar(produccionPlanta1);
         planta2.consultar(produccionPlanta2);
         planta3.consultar(produccionPlanta3);

         sumaProduccionPlantas:=produccionPlanta3+produccionPlanta2+produccionPlanta1;

         diferencia:=consumoTotalCiudad-sumaProduccionPlantas;

         if diferencia > porcentajeConsumo then
           Text_IO.Put_Line("PELIGRO BAJADA!! CONSUMO:"&consumoTotalCiudad'Img&" PRODUCCION:"&sumaProduccionPlantas'Img);
         end if;


         if diferencia <= porcentajeConsumo and diferencia /= 0 then
            Text_IO.Put_Line("PELIGRO SOBRECARGA!! CONSUMO:"&consumoTotalCiudad'Img&" PRODUCCION:"&sumaProduccionPlantas'Img);
         end if;
         if diferencia = porcentajeConsumo then
            Text_IO.Put_Line("ESTABLE CONSUMO:"&consumoTotalCiudad'Img&" PRODUCCION:"&sumaProduccionPlantas'Img);
         end if;

         --Aqui empiezan las operaciones para incrementar

         if diferencia >=3 then
            Text_IO.Put_Line("He incrementado las tres plantas");
            planta1.incrementar;
            planta2.incrementar;
            planta3.incrementar;

         else if diferencia =2 then

               if (produccionPlanta1<30) and (produccionPlanta2<30) then
                  planta1.incrementar;
                  planta2.incrementar;
                  planta3.mantener;
                  Text_IO.Put_Line("He incrementado la produccion de la planta 1");
                  Text_IO.Put_Line("He incrementado la produccion de la planta 2");
               else if produccionPlanta1<30 then
                     planta1.incrementar;
                     planta3.incrementar;
                     planta2.mantener;
                     Text_IO.Put_Line("He incrementado la produccion de la planta 1");
                     Text_IO.Put_Line("He incrementado la produccion de la planta 3");
                  else if
                       produccionPlanta2<30 then
                        planta2.incrementar;
                        planta3.incrementar;
                        planta1.mantener;
                        Text_IO.Put_Line("He incrementado la produccion de la planta 2");
                        Text_IO.Put_Line("He incrementado la produccion de la planta 3");
                     end if;
                  end if;
               end if;


             else if diferencia=1 then

                  if produccionPlanta3<30 then
                     planta3.incrementar;
                     Text_IO.Put_Line("He incrementado la produccion de la planta 3");
                     planta2.mantener;
                     planta1.mantener;
                  else if produccionPlanta2<30 then
                        planta2.incrementar;
                        Text_IO.Put_Line("He incrementado la produccion de la planta 2");
                        planta1.mantener;
                        planta3.mantener;
                     else if produccionPlanta1<30 then
                           planta1.incrementar;
                           Text_IO.Put_Line("He incrementado la produccion de la planta 1");
                           planta2.mantener;
                           planta3.mantener;
                        end if;
                     end if;
                  end if;


               end if;
            end if;
         end if;

         --Aqui empiezan las operaciones para decrementar

         if diferencia <=-3 then
            Text_IO.Put_Line("He decrementado las tres plantas");
            planta1.decrementar;
            planta2.decrementar;
            planta3.decrementar;

         else if diferencia = -2 then

                if (produccionPlanta1>0) and (produccionPlanta2>0) then
                  planta1.decrementar;
                  planta2.decrementar;
                  planta3.mantener;
                  Text_IO.Put_Line("He decrementado la produccion de la planta 1");
                  Text_IO.Put_Line("He decrementado la produccion de la planta 2");
               else if produccionPlanta1>0 then
                     planta1.decrementar;
                     planta3.decrementar;
                     planta2.mantener;
                     Text_IO.Put_Line("He decrementado la produccion de la planta 1");
                     Text_IO.Put_Line("He decrementado la produccion de la planta 4");
                  else if
                       produccionPlanta2>0 then
                        planta2.decrementar;
                        planta3.decrementar;
                        planta1.mantener;
                        Text_IO.Put_Line("He decrementado la produccion de la planta 2");
                        Text_IO.Put_Line("He decrementado la produccion de la planta 3");
                     end if;
                  end if;
               end if;






             else if diferencia=-1 then

               if produccionPlanta3>0 then
                     planta3.decrementar;
                     Text_IO.Put_Line("He decrementado la produccion de la planta 3");
                     planta2.mantener;
                     planta1.mantener;
                  else if produccionPlanta2>0 then
                        planta2.decrementar;
                        Text_IO.Put_Line("He decrementado la produccion de la planta 2");
                        planta1.mantener;
                        planta3.mantener;
                     else if produccionPlanta1>0 then
                           planta1.decrementar;
                           Text_IO.Put_Line("He decrementado la produccion de la planta 1");
                           planta2.mantener;
                           planta3.mantener;
                        end if;
                     end if;
                  end if;
               end if;
            end if;
         end if;

         if diferencia = 0 then
            Text_IO.Put_Line("ESTABLE CONSUMO:"&consumoTotalCiudad'Img&" PRODUCCION:"&sumaProduccionPlantas'Img);

            Text_IO.Put_Line("He mantenido la produccion de las 3 plantas");
            planta1.mantener;
            planta2.mantener;
            planta3.mantener;
         end if;



      end loop;

   end comenzarPrograma;

begin

   consumo.iniciar(35);
   delay 0.3;
   comenzarPrograma;
   null;

end Main;
