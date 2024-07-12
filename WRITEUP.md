# Write-up Template

# Article CMS (FlaskWebProject)

This project is a Python web application built using Flask. The user can log in and out and create/edit articles. An article consists of a title, author, and body of text stored in an Azure SQL Server along with an image that is stored in Azure Blob Storage.

## Log In Credentials for FlaskWebProject

- Username: admin
- Password: 123456

Or, once the MS Login button is implemented, it will automatically log into the `admin` account.

The application can be accessed at: [https://webapprkcms.azurewebsites.net/](https://webapprkcms.azurewebsites.net/)
The folder screenshots contains the images of the resource group, environment configuration and application features.

### Analyze, choose, and justify the appropriate resource option for deploying the app.

#### VM vs. App Service

1. **Costs**

**Virtual Machine (VM)**
- Initial Setup Costs: Higher due to the need for setting up the operating system, middleware, and other dependencies.
- Operational Costs: Includes the cost of the VM instance, storage, bandwidth, and any additional software licenses.
- Maintenance Costs: Higher as it requires manual updates, patches, and monitoring.
- Scaling Costs: Scaling VMs can be more expensive as it may require additional instances or more powerful instances.

**App Service**
- Initial Setup Costs: Lower as the platform handles most of the infrastructure setup.
- Operational Costs: Typically includes only the cost of the App Service plan (which covers compute, storage, and bandwidth).
- Maintenance Costs: Lower as the platform manages updates, patches, and scaling automatically.
- Scaling Costs: More cost-effective due to auto-scaling features and pay-as-you-go pricing.

2. **Scalability**

**Virtual Machine (VM)**
- Vertical Scaling: Increase the size of the VM (CPU, RAM).
- Horizontal Scaling: Add more VM instances, but requires load balancing setup.
- Ease of Scaling: More complex, requires manual intervention and configuration.

**App Service**
- Vertical Scaling: Change the pricing tier to get more resources.
- Horizontal Scaling: Automatic scaling based on demand (configured with rules).
- Ease of Scaling: Highly automated and managed by the platform.

3. **Availability**

**Virtual Machine (VM)**
- High Availability: Requires setup of multiple VMs and a load balancer.
- Disaster Recovery: Needs configuration for backups and replication.
- Uptime SLA: Depends on the configuration and redundancy setup by the user.

**App Service**
- High Availability: Built-in load balancing and automated failover.
- Disaster Recovery: Managed by Azure, with built-in backup and replication.
- Uptime SLA: 99.95% uptime SLA provided by Azure.

4. **Workflow**

**Virtual Machine (VM)**
- Deployment Complexity: Higher, requires manual setup and configuration.
- CI/CD Integration: Requires additional setup for CI/CD pipelines.
- Management: Requires continuous monitoring and management by the user.

**App Service**
- Deployment Complexity: Lower, supports easy deployment through various tools (Git, Azure DevOps, GitHub Actions).
- CI/CD Integration: Built-in CI/CD support with integration to Azure DevOps, GitHub, and other tools.
- Management: Minimal management required, platform handles most operations.

#### Deployment Choice: App Service

Based on the analysis above, App Service is chosen for the deployment of the Article CMS app.

**Justification**
- **Cost Efficiency**: App Service provides a more cost-effective solution due to its pay-as-you-go pricing and minimal maintenance costs.
- **Scalability**: App Service offers automatic scaling, making it easier to handle varying loads without manual intervention.
- **Availability**: With built-in high availability and disaster recovery, App Service ensures better uptime and resilience.
- **Ease of Use**: The simplified deployment process and integration with CI/CD tools make App Service a more efficient choice for ongoing development and deployment.

### Assess app changes that would change your decision.

If the following changes occur, re-evaluating the deployment decision might be necessary:

- **Increased Customization Needs**: If the application requires custom configurations or software that cannot be easily supported on App Service, a VM might be more suitable.
- **High Resource Requirements**: If the app needs resources beyond what App Service can offer (e.g., very high CPU/RAM requirements), VMs could be more appropriate.
- **Compliance and Security**: If there are specific compliance or security requirements that necessitate more control over the infrastructure, VMs might be preferred.
