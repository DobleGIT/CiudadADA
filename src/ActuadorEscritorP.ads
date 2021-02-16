with System;
with Ada.Real_Time;
use Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time;
with Text_IO;
with MonitorPlanta; use MonitorPlanta;
package ActuadorEscritorP is
   type ActuadorDato is new Integer;
   protected type ActuadorEscritor(monitorP:access MonitorProduccionPlanta) is

      pragma Interrupt_Priority(System.Interrupt_Priority'Last);
      procedure iniciar;
      procedure incrementar;
      procedure decrementar;
      procedure mantener;
      procedure Timer(event: in out Ada.Real_Time.Timing_Events.Timing_Event);

   private
      cancelar:Boolean;
      estadoIncrementar:Boolean;
      estadoDecrementar:Boolean;
      estadoMantener:Boolean;
      nextTime:Ada.Real_Time.Time;
      escribiendo:ActuadorDato;
      salidaJitterControl:Ada.Real_Time.Timing_Events.Timing_Event;

      salidaPeriodo:Ada.Real_Time.Time_Span:=Ada.Real_Time.Milliseconds(3000);



   end ActuadorEscritor;
end ActuadorEscritorP;
