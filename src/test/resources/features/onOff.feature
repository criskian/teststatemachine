Feature:  Yo como tester evaluar la transición de estados de un control de interruptor de luz inteligente

  Scenario: Verificar que el interruptor acepta solicitudes
    Given url 'https://statemachine--maria7221.replit.app/api/'
    And path 'switch/on'
    And headers { Content-Type: 'application/json', Accept: 'application/json' }
    And header Content-Length = '0'
    When method post
    * match responseStatus == 200 || responseStatus == 409
    # Lógica según el estado recibido
   # * if (responseStatus == 200) karate.log('Recurso procesado exitosamente')
   # * if (responseStatus == 411) karate.log('La transición fue invalida pero el servicio respondió al evento')