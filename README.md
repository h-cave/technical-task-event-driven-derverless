## Scenario brief

You are part of a team responsible for building and maintaining shared cloud infrastructure that enables application teams to deploy scalable, cost-effective workloads without managing servers.

Currently, application teams run scheduled background jobs on EC2 instances using cron, which leads to over-provisioning and operational overhead. Your team wants to investigate whether this workload can be migrated to a fully serverless, event-driven solution, with all infrastructure defined and managed as code.

As an engineer, you will pair with a colleague to conduct a spike into building a serverless scheduled job on AWS. In the first instance, the job should run on a fixed schedule and log a simple “Job executed successfully” message. Once that is working, extend the solution so the job can accept configurable input and perform a simple transformation before logging the result.

## Functional requirements

 - A scheduled job runs automatically on a defined interval (e.g. every minute).

- The job executes without using EC2 or long-running servers.

- The job logs output that can be inspected for debugging and auditing.

- All infrastructure is created and managed using Infrastructure as Code.

- The solution is easy to extend for future jobs or parameters (no hardcoding where possible).

## Extension requirements

- The scheduled job should accept an input value (e.g. a string or number).

- The job should process that input (e.g. uppercase a string or double a number).

- The processed result should be logged when the job runs.

## Spike questions

- How can we create a serverless scheduled job in AWS?

- How can we define and manage the job’s schedule using Infrastructure as Code?

- How can we pass input or configuration into a serverless job?

- How can we observe and debug the execution of the job?

- How can we extend the solution to support additional logic or parameters?

- What are the cost and operational benefits compared to an EC2-based cron solution?

## Optional constraints 

- Use least-privilege IAM permissions.

- Avoid hard-coding configuration values.

- Ensure the solution is environment-agnostic (e.g. dev / prod).

- Include basic documentation explaining how the system works.