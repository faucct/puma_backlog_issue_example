#!/usr/bin/env puma

app do |env|
  sleep env['QUERY_STRING'].to_i

  body = 'I am ok!'

  [200, { 'Content-Type' => 'text/plain', 'Content-Length' => body.length.to_s }, [body]]
end

workers 2

threads 0, 2

daemonize

pidfile '/var/run/puma.pid'

bind 'tcp://0.0.0.0:9292?backlog=8'

queue_requests false
