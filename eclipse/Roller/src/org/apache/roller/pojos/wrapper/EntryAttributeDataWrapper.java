package org.apache.roller.pojos.wrapper;

import org.apache.roller.pojos.EntryAttributeData;

/**
 * Generated wrapper for class: org.apache.roller.pojos.EntryAttributeData
 */
public class EntryAttributeDataWrapper {

    // keep a reference to the wrapped pojo
    private EntryAttributeData pojo = null;

    // this is private so that we can force the use of the .wrap(pojo) method
    private EntryAttributeDataWrapper(EntryAttributeData toWrap) {
        this.pojo = toWrap;
    }

    // wrap the given pojo if it is not null
    public static EntryAttributeDataWrapper wrap(EntryAttributeData toWrap) {
        if(toWrap != null)
            return new EntryAttributeDataWrapper(toWrap);

        return null;
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getId()
    {   
        return this.pojo.getId();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="pojo"
     *
     * This method returns another pojo so we need to wrap the returned pojo.
     */
    public org.apache.roller.pojos.wrapper.WeblogEntryDataWrapper getEntry()
    {
        return org.apache.roller.pojos.wrapper.WeblogEntryDataWrapper.wrap(this.pojo.getEntry());
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getName()
    {   
        return this.pojo.getName();
    }

    /**
     * pojo method tagged with @roller.wrapPojoMethod type="simple"
     *
     * Simply returns the same value that the pojo would have returned.
     */
    public java.lang.String getValue()
    {   
        return this.pojo.getValue();
    }

    /**
     * this is a special method to access the original pojo
     * we don't really want to do this, but it's necessary
     * because some parts of the rendering process still need the
     * orginal pojo object
     */
    public org.apache.roller.pojos.EntryAttributeData getPojo() {
        return this.pojo;
    }

}
