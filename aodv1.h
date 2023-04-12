#ifndef AODV_H
#define AODV_H

// Route_Request structure
typedef struct RREQ
{
    int srcId;
    int destId;
    int hops;
    int broadcastId;
    char payload[50];
    int seqNo;
}rreq;

// Route_Reply structure
typedef struct RREP
{
	int srcId;
    int destId;
    int hops;
    int seqNo;
}rrep;

// Route_Cache for each node
typedef struct ROUTE_CACHE
{
    int destId;
    int next;
    int hops;
    int seqNo;
};
#endif
