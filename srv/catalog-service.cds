using {OData.svc as external} from './external/OData.svc.csn';

service CatalogService {

    @readonly
    entity Products as projection on external.Products {
        key ID, Name, Description, ReleaseDate, DiscontinuedDate, Rating, Price
    };

}
