@KafkaFeature
Feature: Validate kafka

  @Positve @PublishListenMessageWithoutKey
  Scenario: validate publish and listen message from kafka without key
    Given   System prepare message that want to publish with variable: RANDOM_ALPHABET description: testing desc and value: test
    When    System publish message to topic first_topic
    And     System listen message for kafka topic first_topic
    Then    validate system success to listen related message by message


  @Positve @PublishListenMessageWithKey
  Scenario: validate publish and listen message from kafka with key
    Given   System prepare message that want to publish with variable: RANDOM_ALPHABET description: testing desc and value: test
    When    System publish message  with key RANDOM_NUMBER to topic first_topic
    And     System listen message for kafka topic first_topic
    Then    validate system success to listen related message by key