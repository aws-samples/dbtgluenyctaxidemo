Welcome to your new dbt project!

### Using the starter project

0. Prerequisit: export variables
```bash
$ export DBT_ROLE_ARN="arn:aws:iam::$(aws sts get-caller-identity --query "Account" --output text):role/GlueInteractiveSessionRole"
$ export DBT_S3_LOCATION="s3://aws-dbt-glue-datalake-$(aws sts get-caller-identity --query "Account" --output text)-us-east-1/"
```

1. Ensure your profile is setup correctly from the command line:
```bash
$ dbt debug --profiles-dir profile
```

2. Run the models:
```bash
$ dbt run --profiles-dir profile
```

3. Generate documentation for the project:
```bash
$ dbt docs generate --profiles-dir profile
```

4. View the documentation for the project:
```bash
$ dbt docs serve --profiles-dir profile
```


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
