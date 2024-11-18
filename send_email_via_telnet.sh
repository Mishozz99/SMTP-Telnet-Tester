#!/bin/bash

# Mail server details
SMTP_SERVER="mx.test.com"
SMTP_PORT="25"

# Sender and recipient email addresses
SENDER="sender@test.com"
RECIPIENT="recipient@test.com"

# Subject and body of the email
SUBJECT=""
BODY=""

# Telnet session commands
(
  echo "HELO hostname" #Insert your hostname
  sleep 1  # Wait for 1 second after sending HELO command
  echo "MAIL FROM:<$SENDER>"
  sleep 1  # Wait for 1 second after MAIL FROM
  echo "RCPT TO:<$RECIPIENT>"
  sleep 1  # Wait for 1 second after RCPT TO
  echo "DATA"
  sleep 1  # Wait for 1 second after DATA
  echo "Subject: $SUBJECT"
  echo "$BODY"
  echo "."
  sleep 1  # Wait for 1 second after the message body is sent

) | telnet $SMTP_SERVER $SMTP_PORT
