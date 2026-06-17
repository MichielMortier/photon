package de.komoot.photon.opensearch;

public class PhotonIndex {
    // Set once at startup via PhotonDBConfig.-index; never mutated after Server init.
    public static String NAME = "photon";
    public static final String META_DB_PROPERTIES = "PhotonProperties";

    private PhotonIndex() {
    }
}
