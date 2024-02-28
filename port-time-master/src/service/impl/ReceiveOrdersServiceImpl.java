package service.impl;

import dao.ReceiveOrdersDAO;
import dao.impl.ReceiveOrdersDAOImpl;
import entity.ReceiveOrders;
import service.ReceiveOrdersService;

import java.util.List;

public class ReceiveOrdersServiceImpl implements ReceiveOrdersService {
	ReceiveOrdersDAO receiveOrdersDAO = new ReceiveOrdersDAOImpl();

	@Override
	public boolean save (ReceiveOrders receiveOrders) {
		int i = receiveOrdersDAO.save(receiveOrders);
		return i == 1;
	}

	@Override
	public boolean deleteById (Integer id) {
		int i = receiveOrdersDAO.deleteById(id);
		return i == 1;
	}

	@Override
	public boolean update (ReceiveOrders receiveOrders) {
		int i = receiveOrdersDAO.update(receiveOrders);
		return i == 1;
	}

	@Override
	public int count () {
		return receiveOrdersDAO.count();
	}

	@Override
	public List<ReceiveOrders> findAll () {
		return receiveOrdersDAO.findAll();
	}

	@Override
	public ReceiveOrders findById (Integer id) {
		ReceiveOrders orders = receiveOrdersDAO.findById(id);
		return orders;
	}

	@Override
	public List<ReceiveOrders> findByUid (Integer uid) {
		List<ReceiveOrders> list = receiveOrdersDAO.findByUid(uid);
		return list;
	}

	@Override
	public boolean findByUOid (Integer uid, Integer oid) {
		int i = receiveOrdersDAO.findByUOid(uid, oid);
		return i == 1;
	}

	@Override
	public List<ReceiveOrders> findByOid (Integer oid) {
		List<ReceiveOrders> list = receiveOrdersDAO.findByOid(oid);
		return list;
	}

	@Override
	public boolean updateByStatus (Integer status, Integer id) {
		int i = receiveOrdersDAO.updateByStatus(status, id);
		return i == 1;
	}

	@Override
	public int countByStatus (Integer status) {
		int count = receiveOrdersDAO.countByStatus(status);
		return count;
	}

}
