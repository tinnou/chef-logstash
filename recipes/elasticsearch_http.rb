# Fixes the elasticsearch_http plugin.

cookbook_file "/opt/logstash/lib/logstash/outputs/elasticsearch_http.rb" do 
  mode "0644"
end
