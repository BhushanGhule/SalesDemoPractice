// using CatlogService as service from '../../srv/cat-service';
// annotate service.SalesHeaderSet with @(
//     UI.FieldGroup #GeneratedGroup : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Value : soNumber,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : orderDate,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : customerName,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : customerNumber,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : PoNumber,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : inquiryNumber,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Value : totalOrderItems,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup',
//         },
//     ],
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Value : soNumber,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : orderDate,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : customerName,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : customerNumber,
//         },
//         {
//             $Type : 'UI.DataField',
//             Value : PoNumber,
//         },
//     ],
// );

using CatlogService as service from '../../srv/cat-service';

annotate service.SalesHeaderSet with @(
    UI.SelectionFields: [
        soNumber,
        orderDate,
        customerNumber,
        PoNumber

    ],

    UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: soNumber
        },
        {
            $Type: 'UI.DataField',
            Value: orderDate
        },
        {
            $Type: 'UI.DataField',
            Value: customerName
        },
        {
            $Type: 'UI.DataField',
            Value: customerNumber
        },
        {
            $Type: 'UI.DataField',
            Value: PoNumber
        },
        {
            $Type: 'UI.DataField',
            Value: inquiryNumber
        },
        {
            $Type: 'UI.DataField',
            Value: totalOrderItems
        }
    ],
        UI.HeaderInfo:{
        TypeName : 'Sales Order',
        TypeNamePlural: 'Sales Orders',
        Title : {
            $Type : 'UI.DataField',
            Value : soNumber,
        },
        Description: {
            $Type : 'UI.DataField',
            Value : customerName,
        },
        ImageUrl : 'sap-icon://crm-sales',
    },
    UI.Facets:[
        // {
        //     $Type : 'UI.CollectionFacet',
        //     Label: 'More Info',
        //     Facets : [
        //         {
        //             $Type : 'UI.ReferenceFacet',
        //             Label : 'Addional Data',
        //             Target : '@UI.Identification',
        //         },{
        //             $Type : 'UI.ReferenceFacet',
        //             Label : 'Pricing Data',
        //             Target : '@UI.FieldGroup#Spiderman',
        //         },{
        //             $Type : 'UI.ReferenceFacet',
        //             Label : 'Statuses',
        //             Target : '@UI.FieldGroup#Superman',
        //         },
        //     ],
        // },
        {
            $Type : 'UI.ReferenceFacet',
            Target : 'Items/@UI.LineItem#ItemSet',
        },
    ],

);

annotate service.SalesItemSet with @(


    UI.LineItem  #ItemSet  : [
        {
            $Type : 'UI.DataField',
            Value : soItem,
        },
        {
            $Type : 'UI.DataField',
            Value : OrderQuantity,
        },
                {
            $Type : 'UI.DataField',
            Value : SalesUnit,
        },
                {
            $Type : 'UI.DataField',
            Value : Material,
        },                {
            $Type : 'UI.DataField',
            Value : MatDesc,
        },
    ]

);
