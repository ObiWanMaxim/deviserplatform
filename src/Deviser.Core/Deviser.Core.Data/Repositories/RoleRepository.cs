using System;
using System.Collections.Generic;
using System.Linq;
using Deviser.Core.Common.DomainTypes;
using Microsoft.Extensions.Logging;
using Autofac;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;

namespace Deviser.Core.Data.Repositories
{

    public interface IRoleRepository
    {
        List<Role> GetRoles();
        List<Role> GetRoles(string userName);
        Role GetRole(Guid roleId);
        Role GetRoleByName(string roleName);
        Role CreateRole(Role role);
        Role UpdateRole(Role role);
        Role DeleteRole(Guid roleId);

    }

    public class RoleRepository : RepositoryBase, IRoleRepository
    {
        ///Logger
        private readonly ILogger<RoleRepository> _logger;

        //Constructor
        public RoleRepository(ILifetimeScope container)
            : base(container)
        {
            _logger = container.Resolve<ILogger<RoleRepository>>();
        }

        //Custom Field Declaration
        public List<Role> GetRoles()
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var result = context.Roles
                        .OrderBy(r => r.Name)
                        .ToList();
                    return Mapper.Map<List<Role>>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while getting GetRoles", ex);
            }
            return null;
        }

        public List<Role> GetRoles(string userName)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var user = context.Users.FirstOrDefault(u => u.UserName.ToLower() == userName);
                    if (user != null)
                    {
                        var result = context.Roles
                            .Include(r=>r.UserRoles)
                            .Where(r => r.UserRoles.Any(u => u.UserId == user.Id))
                            .OrderBy(r => r.Name)
                            .ToList();
                        return Mapper.Map<List<Role>>(result);
                    }
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while getting GetRoles", ex);
            }
            return null;
        }

        public Role GetRole(Guid roleId)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var result = context.Roles
                              .FirstOrDefault(e => e.Id == roleId);

                    return Mapper.Map<Role>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while calling GetRole", ex);
            }
            return null;
        }

        public Role GetRoleByName(string roleName)
        {
            try
            {
                using (var context = new DeviserDbContext(DbOptions))
                {
                    var result = context.Roles
                              .FirstOrDefault(e => e.Name == roleName);

                    return Mapper.Map<Role>(result);
                }
            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while calling GetRoleByName", ex);
            }
            return null;
        }

        public Role CreateRole(Role role)
        {
            try
            {
                var dbRole = Mapper.Map<Entities.Role>(role);
                RoleManager<Entities.Role> rm = Container.Resolve<RoleManager<Entities.Role>>();
                var result = rm.CreateAsync(dbRole).Result;

                //Role resultRole;
                //role.Id = Guid.NewGuid().ToString();
                //resultRole = context.Roles.Add(role).Entity;
                //context.SaveChanges();
                return role;

            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while calling CreateRole", ex);
            }
            return null;
        }
        public Role UpdateRole(Role role)
        {
            try
            {
                RoleManager<Entities.Role> rm = Container.Resolve<RoleManager<Entities.Role>>();
                var dbRole = rm.Roles.FirstOrDefault(r => r.Id == role.Id);
                dbRole.Name = role.Name;
                var result = rm.UpdateAsync(dbRole).Result;

                //Role resultRole;
                //resultRole = context.Roles.Attach(role).Entity;
                //context.Entry(role).State = EntityState.Modified;

                //context.SaveChanges();
                return role;

            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while calling UpdateRole", ex);
            }
            return null;
        }
        public Role DeleteRole(Guid roleId)
        {
            try
            {
                RoleManager<Entities.Role> rm = Container.Resolve<RoleManager<Entities.Role>>();
                var role = rm.Roles
                    .FirstOrDefault(e => e.Id == roleId);
                var result = rm.DeleteAsync(role).Result;


                //Role resultRole;
                //var deleteObj = context.Roles
                //.Where(e => e.Id == roleId)
                //    .FirstOrDefault();

                //resultRole = context.Roles.Remove(deleteObj).Entity;
                //context.SaveChanges();
                return Mapper.Map<Role>(role);

            }
            catch (Exception ex)
            {
                _logger.LogError("Error occured while calling DeleteRole", ex);
            }
            return null;
        }

    }

}//End namespace
