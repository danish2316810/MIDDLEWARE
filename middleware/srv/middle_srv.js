
const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { Products } = this.entities;
    const service = await cds.connect.to('NorthWind');

    this.on('READ', Products, async request => {
        var data = await service.tx(request).run(request.query);

        data = data.filter(element => element.Price >= 100);

    //    data.forEach (function (Element, index) {
    //     if (Element.Price<100){
    //         data.splice(index,1)
    //     }
    //    })

        // Modify the data
        data.push({
            ID: "101",
            Name: "saw",
            Description: "cutting woods",
            Price: "2000",
            Rating: "4"
        });

        // Log the modified data
        console.log(data);

        // Return the modified data
        return data;
    });
});