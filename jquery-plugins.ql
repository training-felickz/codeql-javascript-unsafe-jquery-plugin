
import javascript

from DataFlow::SourceNode plugin
where plugin = jquery().getAPropertyRead("fn").getAPropertySource()
select plugin
