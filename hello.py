def application(env, start_response):
  start_response('200 OK', [('Content-Type', 'text/plain')])
  return [bytes(w + '\n', 'ascii') for w in env['QUERY_STRING'].split('&')]
