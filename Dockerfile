FROM ghcr.io/mhsanaei/3x-ui:latest

EXPOSE 2053 443 80

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
    CMD curl -f http://localhost:2053/ || exit 1
