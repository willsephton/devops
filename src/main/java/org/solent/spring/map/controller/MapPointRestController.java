package org.solent.spring.map.controller;

import java.util.Optional;

import org.solent.spring.map.model.MapPoint;
import org.solent.spring.map.repository.MapPointRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
public class MapPointRestController {
	
	
    @Autowired
    MapPointRepository mapPointRepository;

    @Operation(summary = "Get a list of map points")
    @RequestMapping("/get")
    public Iterable<MapPoint> list() {
        return mapPointRepository.findAll();
    }

    @Operation(summary = "Get a specific map point by id")
    @RequestMapping("/get/{id}")
    public MapPoint getById(@Parameter(description = "id of point to be retreived") @PathVariable(value = "id") long id){
        Optional<MapPoint> mpo = mapPointRepository.findById(id);
        return (mpo.isEmpty()) ? null : mpo.get();
    }
    
    @Operation(summary = "Save a new point to database")
    @RequestMapping("/save")
    public MapPoint savePoint(@RequestBody MapPoint newPoint) {
    return mapPointRepository.save(newPoint);
    }
    
    @Operation(summary = "Remove a point from database")
    @RequestMapping("/delete/{id}")
    public ResponseEntity<Void> removePoint(@Parameter(description = "id of point to be removed") @PathVariable(value = "id") long id) {
        if (mapPointRepository.existsById(id)){
            mapPointRepository.deleteById(id);
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
    


}
