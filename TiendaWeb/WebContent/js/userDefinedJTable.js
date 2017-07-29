/**
 * 
 */
$(document).ready(function() {
        $('#RecordTableContainer').jtable({
                title : 'Records List',
                actions : {
                        listAction : 'listAction',
                        createAction : 'createAction',
                        updateAction : 'updateAction',
                        deleteAction : 'deleteAction'
                },

                fields : {
                        idRecord : {
                                title : 'Record Id',
                                width : '30%',
                                key : true,
                                list : true,
                                edit : false,
                                create : true
                        },
                        name : {
                                title : 'Name',
                                width : '30%',
                                edit : true
                        },
                        artist : {
                                title : 'Artist',
                                width : '30%',
                                edit : true
                        },
                        price : {
                                title : 'Email',
                                width : '10%',
                                edit : true
                        },
                        stock : {
                            title : 'Stock',
                            width : '10%',
                            edit : true
                    }
                        
                }
        });
        $('#RecordTableContainer').jtable('load');
});