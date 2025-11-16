1. Please tell us about your two most recent internships/projects.

Last Winter, I worked on backend infrastructure for Base Power, a Series B energy trading startup, where reliability was mission-critical. I transitioned local trading simulations to cloud-native execution using Temporal, increasing our simulation speed by 3x. I also implemented gRPC and Protobuf for communication between Python and Go microservices. This experience taught me to build scalable backend systems in fintech, where data accuracy and uptime directly impact business outcomes.

I'm currently building Walnote.ai, an AI platform that auto-generates explainer videos. I architected the entire backend using FastAPI, Celery, PostgreSQL, and SQLAlchemy—technologies that align closely with Ramp's stack. The system processes 1,000+ animations through a distributed Celery task queue, and I optimized the pipeline to reduce render latency from 12s to 2s using distributed GPU rendering. I've scaled the platform with Docker and PostgreSQL/SQLAlchemy for data persistence, handling real user traffic in production. I've raised $20k in pre-seed funding and led product strategy from prototype to production.

2. We believe exceptional performance in one area is a good indication of performance in other areas. Do you have any examples of exceptional performance you want to highlight?
   Examples outside of work (e.g. from hobbies, sports, or games) are preferred

I've won 10 hackathons at major competitions like Hack the North, Hack the Valley, and ETHGlobal Waterloo. What I find most meaningful is the pattern of rapid learning under time pressure—I typically learn new technologies on the fly (Temporal, Pyodide, advanced React patterns) and immediately apply them to build production-quality projects in 24-36 hours. This ability to quickly understand complex systems, make architectural decisions under constraints, and ship working code has translated directly to my professional work, where I've contributed to production systems at Base Power and Groq within my first week.

Beyond coding, I've demonstrated exceptional performance in finance: I grew $30k into $100k in 6 months by investing in RDDT stock. I taught myself to analyze market trends and company financials, learning to read earnings reports, understand valuation metrics, and assess market sentiment. This experience gave me a deep appreciation for how financial data drives decision-making and how technology can transform financial operations—which is exactly what Ramp does for businesses.

3. Do you have professional experience building web services/backend APIs in a production environment?

Yes, I have extensive experience building production backend APIs and web services:

For Walnote.ai, I built the entire backend infrastructure using FastAPI with RESTful APIs for video generation requests, integrated Celery for asynchronous task processing, and used PostgreSQL with SQLAlchemy for data persistence. The system handles real user traffic and processes 1,000+ video generation jobs. I implemented proper error handling, retry logic, and monitoring to ensure reliability in production.

At Bse Power I implemented gRPC services for communication between Python algorithm services and Go microservices, ensuring type safety and reducing serialization overhead by 20%. I also worked on real-time market data transformation pipelines that processed financial trading data, requiring careful attention to performance and reliability in a mission-critical environment.
