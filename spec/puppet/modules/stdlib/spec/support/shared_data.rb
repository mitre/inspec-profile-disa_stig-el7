# -*- encoding : utf-8 -*-
module SharedData
  IPV4_PATTERNS = [
    '0.0.0.0',
    '1.2.3.4',
    '10.10.10.10',
    '127.0.0.1',
    '192.88.99.0',
    '194.232.104.150',
    '224.0.0.0',
    '244.24.24.24',
    '255.255.255.255',
    '8.8.8.8',
    '8.8.8.8/0',
    '8.8.8.8/16',
    '8.8.8.8/255.255.0.0',
    '8.8.8.8/32',
  ]
  IPV4_NEGATIVE_PATTERNS = [
    '',
    '0000',
    '0.0.0.0.',
    '0.0.0.0./0.0.0.0.',
    '0.0.0.0./1',
    '0.0.0.0.0',
    '0.0.0.0/0.0.0.0.',
    '0.0.0.256',
    '0.0.0',
    '1.2.3.4.5',
    '1.2.3',
    '10.010.10.10',
    '2001:0db8:85a3:0000:0000:8a2e:0370:73342001:0db8:85a3:0000:0000:8a2e:0370:7334',
    '4.4.4',
    '77',
    '9999.9999.9999.9999',
    'affe::beef',
    'nope',
  ]
end
