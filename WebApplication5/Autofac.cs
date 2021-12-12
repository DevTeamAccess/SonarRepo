using Autofac;
using Autofac.Core;
using Autofac.Core.Registration;
using System;
using System.Collections.Generic;
using System.Linq;

using System.Threading.Tasks;

namespace WebApplication5
{
    public class Autofac : Module
    {
        protected override void Load(ContainerBuilder builder)
        {

            builder.RegisterType<OperationService>().As<IScopedService>()
            .InstancePerDependency();
           
        }
     
    }
}
