 _______                                 _______ ______  ______  
(_______)                               (_______|_____ \(_____ \ 
 _______  ____ ____ _____ ____  _____    _____   _____) )_____) )
|  ___  |/ ___) ___|____ |  _ \(____ |  |  ___) |  __  /|  ____/ 
| |   | | |  ( (___/ ___ | | | / ___ |  | |_____| |  \ \| |      
|_|   |_|_|   \____)_____|_| |_\_____|  |_______)_|   |_|_|v0.0.1-alpha     
                                                                 
Arcana ERP v0.0.1-alpha
(c) 2015 The Wizard & The Wyrd, LLC
rev. October 10, 2015

Summary:
========
Arcana ERP is a modern ERP platform without the pretentious corporate marketing buzz-words
and hefty price tags often found in common Enterprise Resource Planning products.

By modern, we mean: fault-tolerant, distributed, well-tested, web-scalable, and open source.

Fault Tolerance:
================
Under the hood, Arcana uses the Akka.NET actor system for self-healing, light weight concurrency.
In addition to Akka.NET, Arcana ERP favors immutable data collections and Software Transactional Memory.

Distributed:
============
By using immutable data collections, STM, and Akka.NET, Arcana ERP can horizontally scale with low
overhead.  Thanks to Akka.NET, each host is able to handles hundreds of thousands of simulataneous actions.

Well-Tested:
============
Instead of a monolithic stack resistant to change, Arcana ERP embraces test-driven and domain-driven
development practices.  The only code permitted into the master branch is code that has an accompanying
test suite.

Web-Scalable:
=============
Arcana ERP treats existing and emerging internet technologies as first-class citizens.  With a modular
architecture with frst-class support for Akka.NET and Software Transactional Memory, and modern hosting
providers like Azure and Amazon Web Services, Arcana ERP can be deployed using modern orchestration and
systems configuration tooling.

Open Source:
============
Traditionally, open source ERP systems have not been as sucessful as entrenched product lines like the
SAP, Dynamics, and SAGE families of software packages.  By pursuing an open source development process and license,
business can remove the need to spend hundreds of thousands (to millions) of dollars on their ERP expenses.

By providing well-documented APIs and extensibility points, individual organizations can quickly create new
features, modules, and reports using a well-known and well-tested enterprise development environment:

C# and the .NET platform.

With the recent open source release of the OpenCLR platform, and successful builds of the OpenCLR runtime on
various flavors of Linux and Unix, combined with OpenCLR/DXN ASP.NET builds inside Docker containers, developers
can use the power of C# with the freedom to customize their deployments and network topologies.

By using ASP.NET with MVC, Systems Architects, Engineers, and Administrators can choose any data store supported
by Entity Framework; whether that be MSSQL, MySQL, PostgreSQL, or some other data provider.

Arcana ERP is a pleasure to implement, customize, maintain, and extend.  Whether you decide to use the
modern responsive web client, or our desktop application, or consume data through our RESTful end-points,
Arcana ERP provides modern tooling to shape modern business processes and resource planning.

Support:
========
In addition to the community support found in other open source systems and projects, we are proud to
announce the general availabilty of short-term and long-term commercial support, for all aspects of
Arcana ERP design, implementation, integration, migration, and support through the company sponsoring
Arcana ERP's continued development:

Reach out to The Wizard & The Wyrd, LLC today, and we'll gladly assist with every step of Arcana ERP's
development, deployment, and support life-cycles (including bespoke custome modules for your unique
business needs).

Upcoming Features:
==================
  * Complete architecture and platform documentation - including diagrams, API references, and more.
  * PowerShell Support - SysAdmins, please automate your maintenance and configuration tasks with PS. ;)
  * SQL Server Reporting Services - use existing reporting technology from SQL Server.
  * Business Intelligence - rich, customizable dashboards built using SyncFusion controls.
  * 3rd Party Plugin Support - by using Ninject for Dependency Injection, create plugins using well-defined
	interfaces as points of extensibility.
  * Windows Installers - install Arcana ERP server and client packages, including database schemas, using
	friendly MSI packages that can be silently deployed (much to the pleasure of SysAdmins everywhere).
  * SCCM Support - First-class support for deployment, monitoring, and configuration using Microsoft SCCM.
  * Azure Templates - deploy Arcana ERP in the cloud with a single click.
  * Docker Container Support - decouple your Arcana ERP deployment from the Windows family of operating systems.
  * Windows VMs and appliances - obtain your Windows Server licenses through your normal channels, or from The Wizard & The Wyrd, LLC.
	This is a suitable option for deployment to private vSphere and Hyper-V virtual datacenters.
  * Rich Web Client - responsive and modern web client using modern material design to deliver in-browser and native-app clients.
  * Desktop Clients - Powerful desktop clients built upon WPF and XAML suitable for workstations and Remote Desktop Services.
  * Sharepoint 2013 integration - do you have an existing corporate Sharepoint installation?  Seamlessly integrate Arcana ERP
    as much or as little as you like; in particular, Sharepoint search services.
  * Office365 integration - integrate your Office365 deployment into your Acana ERP deployment.

All of these features, and more, will be released under the Arcana ERP Open Source license.

Regards,
Ramon J. Long III
<ramonjlongiii@gmail.com>
Chief Technology Officer
The Wizard & The Wyrd, LLC