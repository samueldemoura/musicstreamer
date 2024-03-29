// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.edu.ufpb.nhrf.musicstreamer.domain;

import br.edu.ufpb.nhrf.musicstreamer.domain.AlbumInfo;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

privileged aspect AlbumInfo_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long AlbumInfo.getId() {
        return this.id;
    }
    
    /**
     * Gets title value
     * 
     * @return String
     */
    public String AlbumInfo.getTitle() {
        return this.title;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @return Boolean
     */
    public boolean AlbumInfo.equals(Object obj) {
        if (!(obj instanceof AlbumInfo)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        AlbumInfo rhs = (AlbumInfo) obj;
        return new EqualsBuilder().append(id, rhs.id).append(title, rhs.title).isEquals();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Integer
     */
    public int AlbumInfo.hashCode() {
        return new HashCodeBuilder().append(id).append(title).toHashCode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String AlbumInfo.toString() {
        return "AlbumInfo {" + 
                "id='" + id + '\'' + 
                ", title='" + title + '\'' + "}" + super.toString();
    }
    
}
