// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.domain;

import br.edu.ufpb.nhrf.musicstreamer.domain.ArtistInfo;
import io.springlets.format.EntityFormat;

privileged aspect ArtistInfo_Roo_Projection {
    
    declare @type: ArtistInfo: @EntityFormat("#{name}");
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param id
     * @param name
     */
    public ArtistInfo.new(Long id, String name) {
        this.id = id;
        this.name = name;
    }

}
