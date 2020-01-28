def application(env, start_response):
  start_response('200 OK', [('Content-Type', 'text/plain')])
  return [str(w) + " = " + str(env[w]) + "\n" for w in env]
