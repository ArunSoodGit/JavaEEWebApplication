package myApplication.rest;


import myApplication.dao.DataAccess;
import myApplication.models.User;

import javax.ws.rs.GET;
import javax.ws.rs.Produces;
import javax.ws.rs.Path;
import java.util.LinkedList;
import java.util.List;

// The Java class will be hosted at the URI path "/helloworld"
@Path("/json")
public class restJSON {
    // The Java method will process HTTP GET requests

    @GET
    @Produces("application/json")
    public List<User> findAll(){

        return DataAccess.getAll();
    }



}
