Feature:  Yo como tester evaluar la transición de estados de un control de interruptor de luz inteligente

  @smoketest
  Scenario: Verificar que el interruptor acepta solicitudes
    Given url 'https://statemachine--maria7221.replit.app/api/'
    And path 'switch/state'
    And headers { Content-Type: 'application/json', Accept: 'application/json' }
    When method get
    * print 'Response status:', responseStatus
    * match responseStatus == 200