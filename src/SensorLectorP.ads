with Ada.Real_Time;
use Ada.Real_Time;
with Ada.Real_Time.Timing_Events;
use Ada.Real_Time;
with Text_IO;
with MonitorPlanta;
use MonitorPlanta;
package SensorLectorP is

   protected type SensorLector(monitorP:access MonitorProduccionPlanta) is

      procedure leer (dato:out Integer);
   private
      leyendo:Integer;

   end SensorLector;
end SensorLectorP;
