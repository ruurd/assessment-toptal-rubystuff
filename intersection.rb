# encoding: UTF-8
# ----------------------------------------------------------------------------
def solution(blx1, bly1, trx1, try1, blx2, bly2, trx2, try2)
    # at least 1 point should be in the other rectangle
    in_rect = 0
    in_rect += 1 if point_falls_in_rectangle(blx1, bly1, blx2, bly2, trx2, try2)
    in_rect += 1 if point_falls_in_rectangle(blx1, try1, blx2, bly2, trx2, try2)
    in_rect += 1 if point_falls_in_rectangle(trx1, bly1, blx2, bly2, trx2, try2)
    in_rect += 1 if point_falls_in_rectangle(trx1, try1, blx2, bly2, trx2, try2)
    
    intersection_area = 0
    
    if in_rect > 0
        iblx = blx1 > blx2 ? blx1 : blx2 # max
        ibly = bly1 > bly2 ? bly1 : bly2 # max
        itrx = trx1 < trx2 ? trx1 : trx2 # min
        itry = try1 < try2 ? try1 : try2 # min
    
        intersection_area = (itrx - iblx) * (itry - ibly)
    end
    intersection_area
end
 
def point_falls_in_rectangle(px, py, blx, bly, trx, try)
    (trx > px) && (px > blx) && (bly < py) && (py < try)    
end

puts solution(0, 2, 5, 10, 3, 1, 20, 15)
