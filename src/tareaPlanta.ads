with MonitorPlanta;
use MonitorPlanta;
package tareaPlanta is
   task type Planta(paramID:Integer) is

      entry consultar(dato:out Integer) ;
      entry incrementar;
      entry decrementar;
      entry mantener;
   end Planta;
end tareaPlanta;
