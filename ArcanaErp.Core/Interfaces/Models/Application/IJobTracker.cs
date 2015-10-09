using System;

namespace ArcanaErp.Core.Interfaces.Models.Application
{
    public interface IJobTracker
    {
        int Id { get; set; }
        string JobName { get; set; }
        string JobClass { get; set; }
        string RunTime { get; set; }
        DateTime? LastRunAt { get; set; }
        DateTime? NextRunAt { get; set; }
    }
}