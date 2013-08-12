PHPVERSION=$(php --version | head -1 | awk '{print $2}')
PROMPT='('$PHPVERSION') '$PROMPT
