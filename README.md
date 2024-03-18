# kodey-salesforce-apex-sample

This repository is an example Kodey.ai Coding Agent Workflow

## Objectives

In this sample, we will explore how Kodey.ai can create projects for salesforce with apex classes.

## Project Setup & Steps 

1. Signup for a new Kodey.ai account or login to your existing Kodey.ai environmenty (link-here)
2. Configure your Kodey.ai integrations to the desired issue tracker and cloud git provider.
3. Fork this repository, and clone it to the cloud git provider of your choosing (Github, Azure DevOps, Bitbucket)
4. Create the sample issue / work item in your issue tracker. Copy and Paste the issue description from below.
5. Execute the below prompt in the Kodey.ai chat UI
6. Validate the commits and pull requests in your cloud git provider

### SAMPLE PROMPT - Github Tools (Salesforce APEX Inventory Management Project)
```
    branch name to create: feature/apex-sample-project-v1

    Information to agent: Do as the steps below are defined one by one. You are working in github repo so make sure to use tools related to github repo. Do not write comments in the code. Write the code logic inside the methods of classes. Don't leave placeholders in the code. You are being asked to write full code with no comments and no placeholders.

    Important Note to agent: Write full code with no comments and no placeholders. Write the full code logic inside the methods of classes. Don't leave placeholders in the code.
    
    Steps:

    step 1: Using GithubCreateNewBranch tool, Create a new branch with name <branch name to create> first and then do the steps below.

    step 2: Using GithubCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to ProductService.
    Assume the file name by yourself, The class should be a service class that will have functions to handle operations related to products, such as creating, updating, and deleting products in database.
    Example for creating a New product is given below, follow the similar approach for other opreations as well.

    public class ProductService {{

        // Method to create a new product
        public static void createProduct(String productName, Decimal price, Integer quantity) {{
            try {{
                Product__c newProduct = new Product__c(Name = productName, Price__c = price, Quantity__c = quantity);
                insert newProduct;
                System.debug('Product created successfully. Product Id: ' + newProduct.Id);
            }} catch (Exception e) {{
                System.debug('Error creating product: ' + e.getMessage());
            }}
        }}
    }}

    step 3: Using GithubCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to InventoryService.
    Assume the file name by yourself, The class should be a service class that will have functions to manage inventory levels, including adding inventory, updating quantities, and retrieving inventory information in database.

    step 4: Using GithubCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to OrderService.
    Assume the file name by yourself, The class should be a service class that will have functions to handle order processing, including creating orders, adding items to orders, and updating order status in database.

    step 5: Using GithubCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to OrderItemService.
    Assume the file name by yourself, The class should be a service class that will have functions to manage order items, including creating order items, updating quantities, and calculating subtotal in database.

    step 6: Using GithubCreateNewFile tool, Create files to store the Lightning Web Component (LWC) for the Inventory Management System related to ProductList.
    Assume the file name by yourself, The Lightning Web Component should be a component to display a list of products with their details, including name, price, and quantity in stock in database.
    There must be html, js controller for the LWC.

    step 7: Using GithubCreateNewFile tool, Create files to store the Lightning Web Component (LWC) for the Inventory Management System related to InventoryStatus.
    Assume the file name by yourself, The Lightning Web Component should be a component to show real-time inventory status, highlighting low stock items or items out of stock in database.
    There must be html, js controller for the LWC.

    step 8: Using GithubCreatePullRequest tool, create a new Pull Request from the above created branch with title "APEX INVENTORY MANAGEMENT SYSTEM".

```

### SAMPLE PROMPT - Azure DevOps Tools (Salesforce APEX Inventory Management Project)
```
    branch name to create: feature/apex-sample-project-v1

    Information to agent: Do as the steps below are defined one by one. You are working in azure repo so make sure to use tools related to azure repo.
    Do not write comments in the code. Write the code logic inside the methods of classes. Don't leave placeholders in the code.
    You are being asked to write full code with no comments and no placeholders.

    Important Note to agent: Write full code with no comments and no placeholders. Write the full code logic inside the methods of classes. Don't leave placeholders in the code.
    
    Steps:

    step 1: Using AzureDevopsBranchesCreateBranch tool, Create a new branch with name <branch name to create> first and then do the steps below.

    step 2: Using AzureDevopsRepositoryCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to ProductService.
    Assume the file name by yourself, The class should be a service class that will have functions to handle operations related to products, such as creating, updating, and deleting products in database.
    Example for creating a New product is given below, follow the similar approach for other opreations as well.

    public class ProductService {{

        // Method to create a new product
        public static void createProduct(String productName, Decimal price, Integer quantity) {{
            try {{
                Product__c newProduct = new Product__c(Name = productName, Price__c = price, Quantity__c = quantity);
                insert newProduct;
                System.debug('Product created successfully. Product Id: ' + newProduct.Id);
            }} catch (Exception e) {{
                System.debug('Error creating product: ' + e.getMessage());
            }}
        }}
    }}

    step 3: Using AzureDevopsRepositoryCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to InventoryService.
    Assume the file name by yourself, The class should be a service class that will have functions to manage inventory levels, including adding inventory, updating quantities, and retrieving inventory information in database.

    step 4: Using AzureDevopsRepositoryCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to OrderService.
    Assume the file name by yourself, The class should be a service class that will have functions to handle order processing, including creating orders, adding items to orders, and updating order status in database.

    step 5: Using AzureDevopsRepositoryCreateNewFile tool, Create a new file to store the Apex classes for the Inventory Management System related to OrderItemService.
    Assume the file name by yourself, The class should be a service class that will have functions to manage order items, including creating order items, updating quantities, and calculating subtotal in database.

    step 6: Using AzureDevopsRepositoryCreateNewFile tool, Create files to store the Lightning Web Component (LWC) for the Inventory Management System related to ProductList.
    Assume the file name by yourself, The Lightning Web Component should be a component to display a list of products with their details, including name, price, and quantity in stock in database.
    There must be html, js controller for the LWC.

    step 7: Using AzureDevopsRepositoryCreateNewFile tool, Create files to store the Lightning Web Component (LWC) for the Inventory Management System related to InventoryStatus.
    Assume the file name by yourself, The Lightning Web Component should be a component to show real-time inventory status, highlighting low stock items or items out of stock in database.
    There must be html, js controller for the LWC.

    step 8: Using AzureDevopsPullRequestsCreatePullRequest tool, create a new Pull Request from the above created branch with title "APEX INVENTORY MANAGEMENT SYSTEM".

    step 9: Using AzureDevopsIssuesUpdateIssue tool, update the issue status to done.
```

### SAMPLE PROMPT - Jira / Bitbucket (Making Project That hits API requests extract data and define serverless file)
```
    branch name to create: feature/apex-sample-project-v1

    Information to agent: Do as the steps below are defined one by one. You are working in bitbucket repo so make sure to use tools related to bitucket repo. Do not write comments in the code. Write the code logic inside the methods of classes. Don't leave placeholders in the code. You are being asked to write full code with no comments and no placeholders.

    Important Note to agent: Write full code with no comments and no placeholders. Write the full code logic inside the methods of classes. Don't leave placeholders in the code.
    
    Steps:

    step 1: Using BitBucketCreateNewBranch tool, Create a new branch with name <branch name to create> first and then do the steps below.

    step 2: Using BitBucketWriteCode tool, Create a new file to store the Apex classes for the Inventory Management System related to ProductService.
    Assume the file name by yourself, The class should be a service class that will have functions to handle operations related to products, such as creating, updating, and deleting products in database.
    Example for creating a New product is given below, follow the similar approach for other opreations as well.

    public class ProductService {{

        // Method to create a new product
        public static void createProduct(String productName, Decimal price, Integer quantity) {{
            try {{
                Product__c newProduct = new Product__c(Name = productName, Price__c = price, Quantity__c = quantity);
                insert newProduct;
                System.debug('Product created successfully. Product Id: ' + newProduct.Id);
            }} catch (Exception e) {{
                System.debug('Error creating product: ' + e.getMessage());
            }}
        }}
    }}

    step 3: Using BitBucketWriteCode tool, Create a new file to store the Apex classes for the Inventory Management System related to InventoryService.
    Assume the file name by yourself, The class should be a service class that will have functions to manage inventory levels, including adding inventory, updating quantities, and retrieving inventory information in database.

    step 4: Using BitBucketWriteCode tool, Create a new file to store the Apex classes for the Inventory Management System related to OrderService.
    Assume the file name by yourself, The class should be a service class that will have functions to handle order processing, including creating orders, adding items to orders, and updating order status in database.

    step 5: Using BitBucketWriteCode tool, Create a new file to store the Apex classes for the Inventory Management System related to OrderItemService.
    Assume the file name by yourself, The class should be a service class that will have functions to manage order items, including creating order items, updating quantities, and calculating subtotal in database.

    step 6: Using BitBucketWriteCode tool, Create files to store the Lightning Web Component (LWC) for the Inventory Management System related to ProductList.
    Assume the file name by yourself, The Lightning Web Component should be a component to display a list of products with their details, including name, price, and quantity in stock in database.
    There must be html, js controller for the LWC.

    step 7: Using BitBucketWriteCode tool, Create files to store the Lightning Web Component (LWC) for the Inventory Management System related to InventoryStatus.
    Assume the file name by yourself, The Lightning Web Component should be a component to show real-time inventory status, highlighting low stock items or items out of stock in database.
    There must be html, js controller for the LWC.

    step 8: Using BitBucketCreateNewPullRequest tool, create a new Pull Request from the above created branch with title "APEX INVENTORY MANAGEMENT SYSTEM".

    step 9: Update this jira issue status to done.

```

## Once you have set the description of the issue in your relavant system. You need to use kodey UI Chat and execute below statement to get the work done. 

### Github Issue and Github Repo
```
   Get the issue with id <issue_id> from github repo and do as the description of the issue says.
```

### Azure Repo Issue and Azure Repo
```
   Get the issue with id <issue_id> from azure repo and do as the description of the issue says.
```

### Jira Issue and Bitbucket Repo
```
   Get the issue with id <issue_id> from jira and do as the description of the issue says.
```

## Confirming Successful Sample Outputs

1. Confirm that the branch was created on the issue / work item
2. Confirm that the code created in the associated pull request contains the following
3. Confirm that the work item/issue/ticket in your relevant issue tracking platform is updated.