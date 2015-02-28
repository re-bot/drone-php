# Drone PHP Image

Example of `.drone.yml` for a basic Laravel project:

```yaml
image: rebot/drone-php
script:
  - composer install --prefer-source --dev
  - ./vendor/bin/phpunit --verbose --coverage-text --colors
```
