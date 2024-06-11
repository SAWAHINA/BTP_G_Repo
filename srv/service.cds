using { btp_m_insurance as my } from '../db/schema.cds';

@path : '/service/btp_m_insurance'
service btp_m_insurance
{
    annotate Appform1 with @restrict :
    [
        { grant : [ 'READ' ], to : [ 'Viewer' ] },
        { grant : [ '*' ], to : [ 'full' ] }
    ];

    entity Appform1 as
        projection on my.Appform;
}

annotate btp_m_insurance with @requires :
[
    'authenticated-user',
    'Viewer',
    'full'
];
