FROM mcr.microsoft.com/playwright:v1.40.0-jammy
WORKDIR /app
RUN npm install -g @playwright/mcp
RUN npx playwright install chrome
EXPOSE 8080
CMD ["npx", "@playwright/mcp", "--port", "8080"]
