#A route table contains a set of rules, called routes, 
#that determine where network traffic from your subnet or gateway is directed

resource "aws_route_table" "public_attach_rtb" { 
     vpc_id = var.vpc_id  
      route {  
          cidr_block = var.rtb_cidr   #destination(to)
           gateway_id = var.igw_id    #target(thro')
           
        }

    tags = merge(
        var.tags,
        {
            Name = "${var.region}-${var.project}-PublicRouteTable"

        }
    )
    

}

resource "aws_route_table_association" "public_rtb_assoc" {
    count = length(var.public_attach_subnets_id)
    subnet_id = element(var.public_attach_subnets_id,count.index)
    route_table_id= aws_route_table.public_attach_rtb.id
}


resource "aws_route_table" "private_attach_rtb" { 
     vpc_id = var.vpc_id  
      route {  
          cidr_block = var.rtb_cidr  #destination(to)
          nat_gateway_id = var.nat_id #target(thro')
           
        }


    
    tags = merge(
        var.tags,
        { 
            Name = "${var.region}-${var.project}-PrivateRouteTable"

        }
    )
    

}

resource "aws_route_table_association" "private_rtb_assoc" {
    count = length(var.private_attach_subnets_id)
    subnet_id = element(var.private_attach_subnets_id,count.index)
    route_table_id= aws_route_table.private_attach_rtb.id
}


#Database RouteTable
resource "aws_route_table" "private_db_attach_rtb" { 
     vpc_id = var.vpc_id  
      route {  
          cidr_block = var.rtb_cidr   #destination(to)
          nat_gateway_id = var.nat_id #target(thro')
        }

    tags = merge(
        var.tags,
        {
            Name = "${var.region}-${var.project}-PrivateDBRouteTable"

        }
    )
    

}

resource "aws_route_table_association" "private_db_rtb_assoc" {
    count = length(var.private_db_attach_subnets_id)
    subnet_id = element(var.private_db_attach_subnets_id,count.index)
    route_table_id= aws_route_table.private_db_attach_rtb.id
}