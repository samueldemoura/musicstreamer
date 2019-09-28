// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.web;

import br.edu.ufpb.nhrf.musicstreamer.domain.Track;
import br.edu.ufpb.nhrf.musicstreamer.service.api.TrackService;
import br.edu.ufpb.nhrf.musicstreamer.web.TracksCollectionJsonController;
import br.edu.ufpb.nhrf.musicstreamer.web.TracksItemJsonController;
import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;

privileged aspect TracksCollectionJsonController_Roo_JSON {
    
    declare @type: TracksCollectionJsonController: @RestController;
    
    declare @type: TracksCollectionJsonController: @RequestMapping(value = "/api/tracks", name = "TracksCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private TrackService TracksCollectionJsonController.trackService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param trackService
     */
    @Autowired
    public TracksCollectionJsonController.new(TrackService trackService) {
        this.trackService = trackService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return TrackService
     */
    public TrackService TracksCollectionJsonController.getTrackService() {
        return trackService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param trackService
     */
    public void TracksCollectionJsonController.setTrackService(TrackService trackService) {
        this.trackService = trackService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Track>> TracksCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Track> tracks = getTrackService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(tracks);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents TracksCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(TracksCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param track
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> TracksCollectionJsonController.create(@Valid @RequestBody Track track, BindingResult result) {
        
        if (track.getId() != null || track.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Track newTrack = getTrackService().save(track);
        UriComponents showURI = TracksItemJsonController.showURI(newTrack);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tracks
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> TracksCollectionJsonController.createBatch(@Valid @RequestBody Collection<Track> tracks, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTrackService().save(tracks);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param tracks
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> TracksCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Track> tracks, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getTrackService().save(tracks);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> TracksCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getTrackService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}