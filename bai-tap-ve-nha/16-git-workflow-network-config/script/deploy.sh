#!/bin/bash
# deploy.sh — Deploy FRR config từ Git repo vào container đang chạy
# Chạy từ thư mục gốc bài lab: bash script/deploy.sh

ROUTERS="r1 r2 r3"

for router in $ROUTERS; do
    echo "=== Deploying config to $router ==="

    # TODO: hoàn thiện 2 bước dưới đây
    #
    # Bước 1: Copy file frr.conf mới vào container
    # Gợi ý: docker cp configs/$router/frr.conf $router:/etc/frr/frr.conf
    #
    # Bước 2: Reload FRR để nạp config mới (không cần restart toàn bộ container)
    # Gợi ý: docker exec $router /usr/lib/frr/frrinit.sh reload
    #

    echo "    Done."
done

echo ""
echo "=== Verify: show ip route ospf trên mỗi router ==="
for router in $ROUTERS; do
    echo "--- $router ---"
    docker exec $router vtysh -c "show ip route ospf"
done
