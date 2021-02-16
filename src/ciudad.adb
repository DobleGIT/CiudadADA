with Ada.Numerics.Discrete_Random;
with Text_IO; use Text_IO;
with tareaPlanta;
use tareaPlanta;
with MonitorCiudad; use MonitorCiudad;
with Ada; use Ada;
with Ciudad; use Ciudad;
package body Ciudad is
   Task body TareaCiudad is


      numeroAleatorio: Integer;
      consumoActual: Integer;

      subtype aleatorioPlanta is Integer range -3..3;
      package Aleatorio is new Ada.Numerics.Discrete_Random(aleatorioPlanta);
      seed : Aleatorio.Generator;

   begin


      Aleatorio.reset(seed);

      loop

         delay 5.0;



         numeroAleatorio:=Aleatorio.Random(seed);
         consumoActual:= consumoC.consultarConsumo;

         if ((consumoActual+numeroAleatorio) < 90) or ((consumoActual+numeroAleatorio) > 15) then

            consumoC.asignar(numeroAleatorio);
         else
            consumoC.asignar(-numeroAleatorio);
         end if;


      end loop;


   end TareaCiudad;
end Ciudad;
