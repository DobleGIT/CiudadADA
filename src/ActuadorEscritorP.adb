package body ActuadorEscritorP is
     protected body ActuadorEscritor is
      procedure iniciar is
      begin
         null;

         nextTime:=Clock+salidaPeriodo;
         estadoMantener:=False;
         estadoDecrementar:=False;
         estadoIncrementar:=False;
         cancelar:=True;



      end iniciar;

      procedure incrementar is
      begin

         if estadoIncrementar = True then
            null;
         else if estadoDecrementar = True then
               Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);
               estadoIncrementar:=True;
               delay 0.6;
                nextTime:=Clock+salidaPeriodo;
               Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);
            else if estadoMantener = True then
                  estadoIncrementar:=True;
               delay 0.6;
                nextTime:=Clock+salidaPeriodo;
                  Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);
               else
                  estadoIncrementar:=True;
                  nextTime:=Clock+salidaPeriodo;
                  Ada.Real_Time.Timing_Events.Set_Handler(salidaJitterControl, nextTime, Timer'Access);


               end if;
            end if;
         end if;


      end incrementar;

      procedure decrementar is
      begin
          if estadoDecrementar = True then
            null;
         else if estadoIncrementar = True then
               Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);
               estadoDecrementar:=True;
               delay 0.6;
                nextTime:=Clock+salidaPeriodo;
               Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);
            else if estadoMantener = True then
                  estadoDecrementar:=True;
               delay 0.6;
                nextTime:=Clock+salidaPeriodo;
                  Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);

               else
                     estadoDecrementar:=True;
                     nextTime:=Clock+salidaPeriodo;
                     Ada.Real_Time.Timing_Events.Set_Handler(salidaJitterControl, nextTime, Timer'Access);


               end if;
            end if;
         end if;

      end decrementar;

      procedure mantener is
      begin
         cancelar:=True;

        Ada.Real_Time.Timing_Events.Cancel_Handler(salidaJitterControl, cancelar);

      end mantener;

      procedure Timer(event:in out Ada.Real_Time.Timing_Events.Timing_Event) is
      begin

         if estadoIncrementar = True and monitorP.consultarProduccion<30 then
            monitorP.incrementar;
            estadoIncrementar:=False;
         else if estadoDecrementar = True and monitorP.consultarProduccion>0 then
               monitorP.decrementar;
               estadoDecrementar:=False;

            end if;
         end if;


         nextTime:=nextTime+salidaPeriodo;
         Ada.Real_Time.Timing_Events.Set_Handler(salidaJitterControl, nextTime, Timer'Access);

      end Timer;

   end ActuadorEscritor;
   end ActuadorEscritorP;
