package com.rest.department;

import java.net.URISyntaxException;



import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.rest.department.model.Department;

@Path("/dept")
public class DepartmentService {
@GET
@Path("/get/{deptno}")
@Produces(MediaType.APPLICATION_XML)
public Department getDepartment(@PathParam("deptno") Integer deptno){
	Department department=new Department();
	department.setDeptno(deptno);
	department.setDname("janardhan");
	return department;	
}

@POST
@Path("/create")
@Consumes(MediaType.APPLICATION_XML)
@Produces(MediaType.APPLICATION_XML)
public Department createDepartment(Department department){
	return department;
}

@PUT
@Path("/update")
@Consumes(MediaType.APPLICATION_XML)
@Produces(MediaType.APPLICATION_XML)
public Department updateDepartment(Department department){
	department.setDname(department.getDname()+"updated");
	return department;
}

@DELETE
@Path("/delete/{deptno}")
public Response deleteDepartment(@PathParam("deptno")int deptno)throws URISyntaxException {
	Department d=new Department();
	d.delete(deptno);
return Response.status(200).entity("Department with " +deptno +" is deleted Successfully").build();
}

@Path("/department")
@POST
public Response addUser(@QueryParam("dname") String dName, @QueryParam("deptno") String deptNo)
{
    //Validate  name
    if(dName == null || deptNo.isEmpty())
    {
        return Response.ok().entity("Please give DeptName").build();
    }
    //Validate no
    if(deptNo == null || deptNo.isEmpty())
    {
        return Response.ok().entity("Please enter dno").build();
    }
    //Add user and return the response
    return Response.ok().entity("User added through JAX-RS JavaScript API").build();
}
}
