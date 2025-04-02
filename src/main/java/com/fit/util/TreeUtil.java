package com.fit.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @AUTO
 * @Author AIM
 * @DATE 2025/3/31
 */
public class TreeUtil {

    public interface Function<T, R> {
        R apply(T t);
    }

    public static <T> List<Map<String, Object>> convertToZTree(List<T> list, Function<T, Long> idMapper, Function<T, Long> pidMapper, Function<T, String> nameMapper, Function<T, String> valueMapper, Function<T, Boolean> isLeafMapper) {

        // 存储所有节点信息
        Map<Long, Map<String, Object>> nodeMap = new HashMap<Long, Map<String, Object>>();
        // 存储所有的根节点
        List<Map<String, Object>> rootNodes = new ArrayList<Map<String, Object>>();

        // 构造所有节点，并存入 nodeMap
        for (T item : list) {
            Long id = idMapper.apply(item);
            Long pid = pidMapper.apply(item);

            Map<String, Object> node = new HashMap<String, Object>();
            node.put("id", id);
            node.put("menuText", nameMapper.apply(item));
            node.put("menuValue", valueMapper.apply(item));
            node.put("open", true);
            node.put("menuLeaf", isLeafMapper.apply(item));
            node.put("children", new ArrayList<Map<String, Object>>()); // 预留 children
            // 存入
            nodeMap.put(id, node);
            // 处理根节点
            if (pid == null || pid == 0L) {
                rootNodes.add(node);
            }
        }

        // 组织层级结构
        for (T item : list) {
            Long id = idMapper.apply(item);
            Long pid = pidMapper.apply(item);

            if (pid != null && pid != 0L) {
                Map<String, Object> parentNode = nodeMap.get(pid);
                if (parentNode != null) {
                    List<Map<String, Object>> children = (List<Map<String, Object>>) parentNode.get("children");
                    children.add(nodeMap.get(id)); // 递归添加
                }
            }
        }

        return rootNodes;
    }
}