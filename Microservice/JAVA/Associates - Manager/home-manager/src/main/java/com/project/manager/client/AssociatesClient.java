package com.project.manager.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import com.project.manager.entity.Associates;
import com.project.manager.exception.AssociateNotFoundException;

@FeignClient(url = "$associate.url}", name = "food-service")
public interface AssociatesClient {

	@GetMapping(value = "/getassociate/{id}")
	public Associates getAssignById(@PathVariable("id") int id) throws AssociateNotFoundException;
}