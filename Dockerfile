FROM confluentinc/cp-kafka
COPY entrypoint.sh /var/tmp
CMD bash -E /var/tmp/entrypoint.sh && /bin/bash